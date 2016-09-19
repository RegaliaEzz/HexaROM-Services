.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotForEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 1
    .param p2, "shotEvent"    # I

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2462
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 2465
    iput p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 2466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    .line 2470
    return-void
.end method
