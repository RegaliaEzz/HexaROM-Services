.class Lcom/android/server/location/GpsLocationProvider_samsung$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 1645
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1646
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 1647
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;

    move-result-object v0

    .line 1648
    .local v0, "gyroTemperatureContext":Landroid/hardware/scontext/SContextGyroTemperature;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    iget-boolean v2, v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    if-eqz v2, :cond_0

    .line 1649
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextGyroTemperature;->getGyroTemperature()D

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)D

    move-result-wide v6

    # invokes: Lcom/android/server/location/GpsLocationProvider_samsung;->native_inject_sensor_data(DD)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;DD)V

    .line 1652
    .end local v0    # "gyroTemperatureContext":Landroid/hardware/scontext/SContextGyroTemperature;
    :cond_0
    return-void
.end method
