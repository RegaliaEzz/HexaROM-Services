.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2003
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 2005
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 2007
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 2009
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 2011
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 2013
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 2015
    return-void
.end method

.method private isHvdcpPresent()Z
    .locals 13

    .prologue
    .line 2018
    new-instance v11, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v11, "mChargerTypeFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 2020
    .local v9, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 2026
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .local v10, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2028
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USB_HVDCP"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_2

    .line 2030
    const/4 v12, 0x1

    .line 2034
    .local v12, "ret":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 2035
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2036
    :cond_0
    if-eqz v10, :cond_1

    .line 2037
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2047
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v12

    .line 2032
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_0

    .line 2034
    .end local v0    # "type":Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v6, :cond_3

    .line 2035
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2036
    :cond_3
    if-eqz v9, :cond_4

    .line 2037
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2039
    :catch_0
    move-exception v8

    .line 2040
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v12, 0x0

    .line 2041
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2042
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2043
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_4
    const/4 v12, 0x0

    .line 2044
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2042
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "ret":Z
    :catch_2
    move-exception v8

    goto :goto_4

    .line 2039
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "ret":Z
    :catch_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 2034
    .end local v0    # "type":Ljava/lang/String;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 2054
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v1, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 2055
    .local v1, "level":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v2, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 2056
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v0, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 2092
    .local v0, "health":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    const/4 v3, 0x3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x6

    if-eq v3, v0, :cond_2

    const/4 v3, 0x7

    if-eq v3, v0, :cond_2

    const/16 v3, 0x8

    if-ne v3, v0, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2102
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v6, v3, :cond_3

    .line 2103
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v6, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2104
    iput v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2105
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2107
    :cond_3
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2109
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v2, :cond_6

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2111
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v5, v3, :cond_5

    .line 2112
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2113
    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2114
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2116
    :cond_5
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2118
    :cond_6
    const/4 v3, 0x5

    if-ne v3, v2, :cond_8

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2120
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v8, v3, :cond_7

    .line 2121
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v8, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2122
    iput v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2123
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2125
    :cond_7
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2127
    :cond_8
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$4200(Lcom/android/server/BatteryService;)I

    move-result v3

    if-gt v1, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2129
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v3, :cond_9

    .line 2130
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v7, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2131
    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2132
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2134
    :cond_9
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2136
    :cond_a
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v3, :cond_0

    .line 2137
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->turnOff()V

    .line 2138
    iput v4, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2139
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn off LED"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
