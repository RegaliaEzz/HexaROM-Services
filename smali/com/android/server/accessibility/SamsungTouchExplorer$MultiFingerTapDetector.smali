.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFingerTapDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    }
.end annotation


# static fields
.field private static final LOG_MULTI_FINGER:Ljava/lang/String; = "MultiFingerTapDetector"


# instance fields
.field private final MSG_PERFORM_DOUBLE_TAP:I

.field private final MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final MSG_PERFORM_TRIPLE_TAP:I

.field private final STATE_CANCEL:I

.field private final STATE_READY:I

.field private final STATE_THREE_FINGER_DETECTION:I

.field private final STATE_TWO_FINGER_DETECTION:I

.field private isFirstTapDone:Z

.field private isSecondTapDone:Z

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPointerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1832
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_READY:I

    .line 1837
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_TWO_FINGER_DETECTION:I

    .line 1838
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_THREE_FINGER_DETECTION:I

    .line 1839
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_CANCEL:I

    .line 1842
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1845
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1848
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    .line 1851
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1854
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1857
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    .line 1858
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP:I

    .line 1859
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

    .line 1860
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_TRIPLE_TAP:I

    .line 1863
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    .line 2206
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performSingleTap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTap()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTapAndHold()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTap()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    return v0
.end method

.method private isMultiFingerTap()Z
    .locals 4

    .prologue
    .line 2081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 2083
    .local v1, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->isTapEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2084
    const/4 v2, 0x0

    .line 2087
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :goto_1
    return v2

    .line 2081
    .restart local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2087
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private performDoubleTap()V
    .locals 2

    .prologue
    .line 2134
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2150
    :goto_0
    return-void

    .line 2138
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2149
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2141
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2145
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2138
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performDoubleTapAndHold()V
    .locals 2

    .prologue
    .line 2158
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2174
    :goto_0
    return-void

    .line 2162
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2173
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2165
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2169
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2162
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSingleTap()V
    .locals 2

    .prologue
    .line 2110
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2126
    :goto_0
    return-void

    .line 2114
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2125
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2117
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2121
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performTripleTap()V
    .locals 2

    .prologue
    .line 2182
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2200
    :goto_0
    return-void

    .line 2186
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2199
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2189
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2194
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2094
    const-string v0, "MultiFingerTapDetector"

    const-string v1, "clear the Multi-Finger tap detector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2097
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2098
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2099
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 2101
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2102
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2074
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1901
    :pswitch_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    if-ne v0, v1, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1905
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1907
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1909
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    goto :goto_0

    .line 1913
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1914
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ge v7, v0, :cond_2

    .line 1915
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1914
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1919
    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    packed-switch v0, :pswitch_data_1

    .line 1966
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto :goto_0

    .line 1925
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1927
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1933
    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1934
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1936
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1947
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1950
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1956
    :cond_5
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1957
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1959
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1960
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1973
    .end local v7    # "i":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1974
    .local v6, "count":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 1975
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1976
    .local v9, "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1977
    .local v8, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 1974
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1982
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    .end local v9    # "pointerId":I
    :pswitch_6
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - mDetectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isFirstTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isSecondTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - pointerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1987
    .restart local v9    # "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1988
    .restart local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    if-eqz v8, :cond_6

    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 1998
    :goto_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isMultiFingerTap()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2001
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_9

    .line 2005
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2008
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2009
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 2010
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1993
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_3

    .line 2013
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2017
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2019
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto/16 :goto_0

    .line 2021
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_e

    .line 2026
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_b

    .line 2027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2029
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2030
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2031
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2034
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    add-int/lit8 v2, v2, 0x5a

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2038
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2039
    :cond_c
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2041
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2042
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2043
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2046
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2051
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_0

    .line 2052
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_f

    .line 2053
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2054
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2056
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2057
    :cond_10
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2058
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2059
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 2060
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2063
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2070
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto/16 :goto_0

    .line 1899
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 1919
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
