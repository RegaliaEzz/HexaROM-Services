.class Lcom/android/server/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStrongAuth;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->access$000(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->access$100(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/LockSettingsStrongAuth;->access$200(Lcom/android/server/LockSettingsStrongAuth;II)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/LockSettingsStrongAuth;->handleRemoveUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->access$300(Lcom/android/server/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
