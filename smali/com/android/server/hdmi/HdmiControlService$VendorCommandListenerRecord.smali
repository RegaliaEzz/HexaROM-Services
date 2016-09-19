.class Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VendorCommandListenerRecord"
.end annotation


# instance fields
.field private final mDeviceType:I

.field private final mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p3, "deviceType"    # I

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 1155
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    .line 1156
    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .prologue
    .line 1149
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1162
    monitor-exit v1

    .line 1163
    return-void

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
