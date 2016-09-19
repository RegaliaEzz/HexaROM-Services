.class Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private doneFlag:Z

.field private returnCode:I

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1

    .prologue
    .line 2317
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 2319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->doneFlag:Z

    return-void
.end method


# virtual methods
.method public getReturnCode()I
    .locals 1

    .prologue
    .line 2338
    iget v0, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->returnCode:I

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 2333
    const/4 v0, 0x1

    return v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 2323
    return-void
.end method
