.class Lcom/android/server/enterprise/otp/RateCheck$RateData;
.super Ljava/lang/Object;
.source "RateCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/RateCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RateData"
.end annotation


# instance fields
.field private caller:Ljava/lang/String;

.field private result:Z

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJZ)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "timestamp"    # J
    .param p5, "result"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    .line 111
    iput-object p1, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    .line 113
    iput-wide p3, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    .line 114
    iput-boolean p5, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/otp/RateCheck$RateData;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    return v0
.end method
