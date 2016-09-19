.class final Lcom/android/server/am/VRApplicationPolicy$H;
.super Landroid/os/Handler;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VRApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final HMT_DISCONNECTED_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VRApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/VRApplicationPolicy;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy$H;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string v0, "VRApplicationPolicy"

    const-string v1, "HMT_DISCONNECTED_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy$H;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # invokes: Lcom/android/server/am/VRApplicationPolicy;->comeOutOfVRmodeLocked()V
    invoke-static {v0}, Lcom/android/server/am/VRApplicationPolicy;->access$300(Lcom/android/server/am/VRApplicationPolicy;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy$H;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/am/VRApplicationPolicy;->setVRFlingerStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->access$400(Lcom/android/server/am/VRApplicationPolicy;Z)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
