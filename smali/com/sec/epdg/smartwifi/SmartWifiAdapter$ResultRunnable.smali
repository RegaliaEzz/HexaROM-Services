.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultRunnable"
.end annotation


# instance fields
.field private final mFailure:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mRet:Ljava/lang/Boolean;

.field private final mSuccess:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "s"    # Ljava/lang/Runnable;
    .param p4, "f"    # Ljava/lang/Runnable;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mHandler:Landroid/os/Handler;

    .line 1427
    iput-object p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mSuccess:Ljava/lang/Runnable;

    .line 1428
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mFailure:Ljava/lang/Runnable;

    .line 1429
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mRet:Ljava/lang/Boolean;

    .line 1430
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mRet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mSuccess:Ljava/lang/Runnable;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 1443
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mFailure:Ljava/lang/Runnable;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setReturn(Z)V
    .locals 1
    .param p1, "ret"    # Z

    .prologue
    .line 1433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->mRet:Ljava/lang/Boolean;

    .line 1434
    return-void
.end method
