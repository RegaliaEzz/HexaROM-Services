.class final enum Lcom/sec/epdg/EpdgService$HoDelayStatus;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HoDelayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$HoDelayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field public static final enum DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field public static final enum REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field public static final enum SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field public static final enum UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    new-instance v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 387
    new-instance v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const-string v1, "SETTING_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/EpdgService$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 388
    new-instance v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const-string v1, "REGISTRATION_FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/EpdgService$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 389
    new-instance v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const-string v1, "DONOT_WAIT"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/EpdgService$HoDelayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 385
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->$VALUES:[Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    const-class v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->$VALUES:[Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$HoDelayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method
