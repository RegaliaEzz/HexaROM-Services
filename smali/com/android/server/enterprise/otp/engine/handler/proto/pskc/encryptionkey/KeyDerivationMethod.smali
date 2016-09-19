.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
.super Ljava/lang/Object;
.source "KeyDerivationMethod.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mPBKDFParams:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->mPBKDFParams:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->mAlgorithm:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setPBKDFParams(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;)V
    .locals 0
    .param p1, "mPBKDFParams"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->mPBKDFParams:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    .line 21
    return-void
.end method
