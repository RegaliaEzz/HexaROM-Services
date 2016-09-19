.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;,
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    }
.end annotation


# static fields
.field public static final A8SKT_PROJECT:Z

.field public static final AX_PROJECT:Z

.field public static final CHAGALLATT_PROJECT:Z

.field private static final DEBUG_LOW:Z

.field private static final DEBUG_UNKNOWN:Z

.field public static final GALAXY_VIEW_LTE:Z

.field public static final GALAXY_VIEW_WIFI:Z

.field public static final GT58_PROJECT:Z

.field public static final GT_PROJECT:Z

.field public static final HERO_PROJECT:Z

.field public static final MANUAL_AUTOBRIGHTNESS_FEATURE:Z = false

.field public static final MATISSE10WIFI_PROJECT:Z

.field public static final NOBLE_PROJECT:Z

.field public static final NOVEL_PROJECT:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_DECOUPLE_FOR_DOZE:Z = false

.field public static final SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

.field public static final SEC_FEATURE_HALF_BRIGHTNESS_LOW_BATTERY:Z

.field public static final SEC_FEATURE_MARKER_TRACKER:Z = false

.field public static final SEC_FEATURE_MAXMANUAL_HBM:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_USE_LOCKZONE:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

.field public static final SEC_MANUALTABLE_1:Z

.field public static final SEC_MANUALTABLE_2:Z

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final T_PROJECT:Z

.field public static final T_TMO_PROJECT:Z

.field public static final USE_AUTO_BRIGHTNESS_DETAIL:Z

.field public static final USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z = true

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final ZERO2_PROJECT:Z

.field public static final ZERO_PROJECT:Z

.field public static final mIsMocha:Z

.field private static final mProductName:Ljava/lang/String;

.field public static final mSCafeName:Ljava/lang/String;

.field public static final upgradeLollipop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    const-string/jumbo v0, "ro.product.device"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "marinelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    .line 51
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_PROJECT:Z

    .line 52
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT_PROJECT:Z

    .line 56
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvwifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_WIFI:Z

    .line 57
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_LTE:Z

    .line 58
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_WIFI:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_LTE:Z

    if-nez v0, :cond_c

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_LOCKZONE:Z

    .line 62
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    .line 63
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "chagalllteatt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CHAGALLATT_PROJECT:Z

    .line 64
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a8elteskt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    .line 65
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_3
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_TMO_PROJECT:Z

    .line 69
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CHAGALLATT_PROJECT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_TMO_PROJECT:Z

    if-eqz v0, :cond_f

    :cond_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    .line 74
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "matisse10wifikx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->MATISSE10WIFI_PROJECT:Z

    .line 75
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->MATISSE10WIFI_PROJECT:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HALF_BRIGHTNESS_LOW_BATTERY:Z

    .line 79
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "novel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    .line 80
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "noble"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    .line 81
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    .line 82
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "hero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    .line 83
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a3x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a5x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a7x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a9x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_5
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    .line 90
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_11

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MAXMANUAL_HBM:Z

    .line 94
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v0, :cond_12

    :cond_6
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_1:Z

    .line 95
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_2:Z

    .line 104
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string/jumbo v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    .line 106
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gprimelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    if-eqz v0, :cond_13

    :cond_8
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    .line 107
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    .line 117
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v0, :cond_15

    :cond_9
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

    .line 121
    const-string v0, "Unknown"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    .line 122
    const-string v0, "0x4f4c"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    .line 123
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    .line 125
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_18

    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    .line 126
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_19

    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    .line 129
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_1a

    :goto_10
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    return-void

    :cond_a
    move v0, v1

    .line 45
    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 52
    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 58
    goto/16 :goto_2

    :cond_d
    move v0, v1

    .line 62
    goto/16 :goto_3

    :cond_e
    move v0, v1

    .line 65
    goto/16 :goto_4

    :cond_f
    move v0, v1

    .line 69
    goto/16 :goto_5

    :cond_10
    move v0, v1

    .line 83
    goto/16 :goto_6

    :cond_11
    move v0, v1

    .line 90
    goto/16 :goto_7

    :cond_12
    move v0, v1

    .line 94
    goto/16 :goto_8

    :cond_13
    move v0, v1

    .line 106
    goto/16 :goto_9

    :cond_14
    move v0, v1

    .line 107
    goto/16 :goto_a

    :cond_15
    move v0, v1

    .line 117
    goto/16 :goto_b

    :cond_16
    move v0, v1

    .line 121
    goto :goto_c

    :cond_17
    move v0, v1

    .line 122
    goto :goto_d

    :cond_18
    move v0, v1

    .line 125
    goto :goto_e

    :cond_19
    move v0, v1

    .line 126
    goto :goto_f

    :cond_1a
    move v2, v1

    .line 129
    goto :goto_10
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "PowerManagerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteInt to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 147
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 156
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 152
    :catch_2
    move-exception v1

    .line 153
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
