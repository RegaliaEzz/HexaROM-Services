.class public Lcom/android/server/power/PowerManagerUtil$Sales;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    .line 211
    const-string v0, "VZW"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    .line 212
    const-string v0, "ATT"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIO"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CRI"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->ATT:Z

    .line 213
    const-string v0, "TMB"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMK"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->TMO:Z

    .line 214
    const-string v0, "SPR"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BST"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VMU"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XAS"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SPR:Z

    .line 216
    const-string v0, "USC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LRA"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ACG"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->USCC:Z

    .line 217
    const-string v0, "RWC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FMC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MTA"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CHR"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MTS"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TLS"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KDO"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SPC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CLN"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BMC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VMC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PCM"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SOL"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BWA"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "GLW"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VTR"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ESK"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PMB"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "XAC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->CANADA:Z

    .line 222
    const-string v0, "CHN"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CHU"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CTC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CHM"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CHC"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    .line 224
    const-string v0, "DCM"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->JAPAN:Z

    .line 225
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->ATT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->TMO:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SPR:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->USCC:Z

    if-nez v0, :cond_6

    const-string v0, "XAR"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MTR"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SPT"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CSP"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TFN"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "BNN"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    return-void

    :cond_8
    move v0, v1

    .line 212
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 213
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 214
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 216
    goto/16 :goto_3

    :cond_c
    move v0, v1

    .line 217
    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 222
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
