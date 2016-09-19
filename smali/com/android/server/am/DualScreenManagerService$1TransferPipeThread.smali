.class Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;
.super Ljava/lang/Thread;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DualScreenManagerService;->dumpContextRelationsLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransferPipeThread"
.end annotation


# instance fields
.field final args:[Ljava/lang/String;

.field final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;

.field final thread:Landroid/app/IApplicationThread;

.field final synthetic val$innerPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DualScreenManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "_thread"    # Landroid/app/IApplicationThread;
    .param p3, "_fd"    # Ljava/io/FileDescriptor;
    .param p4, "_args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/io/FileDescriptor;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->this$0:Lcom/android/server/am/DualScreenManagerService;

    iput-object p5, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->val$innerPrefix:Ljava/lang/String;

    .line 1983
    const-string v0, "TransferPipeWrite"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1984
    iput-object p2, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    .line 1985
    iput-object p3, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->fd:Ljava/io/FileDescriptor;

    .line 1986
    iput-object p4, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->args:[Ljava/lang/String;

    .line 1987
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1992
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->val$innerPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/DualScreenManagerService$1TransferPipeThread;->args:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpContextRelationInfo(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    :goto_0
    return-void

    .line 1993
    :catch_0
    move-exception v0

    goto :goto_0
.end method
