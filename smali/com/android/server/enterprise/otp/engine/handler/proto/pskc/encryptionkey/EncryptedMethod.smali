.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;
.super Ljava/lang/Object;
.source "EncryptedMethod.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mKeySize:I

.field private mOaepParams:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mKeySize:I

    return v0
.end method

.method public getOaepParams()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mOaepParams:[B

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mAlgorithm:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "mKeySize"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mKeySize:I

    .line 15
    return-void
.end method

.method public setOaepParams([B)V
    .locals 0
    .param p1, "mOaepParams"    # [B

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mOaepParams:[B

    .line 23
    return-void
.end method
