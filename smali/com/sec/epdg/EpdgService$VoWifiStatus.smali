.class final enum Lcom/sec/epdg/EpdgService$VoWifiStatus;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VoWifiStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$VoWifiStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$VoWifiStatus;

.field public static final enum UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

.field public static final enum VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

.field public static final enum VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

.field public static final enum VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    new-instance v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/epdg/EpdgService$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 360
    new-instance v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    const-string v1, "VOWIFI_ENABLE"

    const-string v2, "ENABLE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sec/epdg/EpdgService$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 361
    new-instance v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    const-string v1, "VOWIFI_VIDEO_ONLY"

    const-string v2, "VIDEO only"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sec/epdg/EpdgService$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 362
    new-instance v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    const-string v1, "VOWIFI_DISABLE"

    const-string v2, "DISABLE"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/sec/epdg/EpdgService$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 358
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->$VALUES:[Lcom/sec/epdg/EpdgService$VoWifiStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 368
    iput p3, p0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->mStatus:I

    .line 369
    iput-object p4, p0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->mText:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 358
    const-class v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->$VALUES:[Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$VoWifiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$VoWifiStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
