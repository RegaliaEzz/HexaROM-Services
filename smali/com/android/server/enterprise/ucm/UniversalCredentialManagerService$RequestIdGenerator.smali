.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;
.super Ljava/lang/Object;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestIdGenerator"
.end annotation


# instance fields
.field fraction:I

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    .line 848
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    .line 849
    return-void
.end method


# virtual methods
.method public getNextContainerRequestId()I
    .locals 3

    .prologue
    .line 852
    iget v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 853
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    .line 855
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
