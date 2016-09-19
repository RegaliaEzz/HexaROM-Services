.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field private mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

.field private mObject:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

.field private mSigantureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

.field private mSignedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

    return-object v0
.end method

.method public getObject()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mObject:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

    return-object v0
.end method

.method public getSigantureValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mSigantureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

    return-object v0
.end method

.method public getSignedInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mSignedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;

    return-object v0
.end method

.method public setKeyInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;)V
    .locals 0
    .param p1, "mKeyInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

    .line 38
    return-void
.end method

.method public setObject(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;)V
    .locals 0
    .param p1, "mObject"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mObject:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

    .line 46
    return-void
.end method

.method public setSigantureValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;)V
    .locals 0
    .param p1, "mSigantureValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mSigantureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

    .line 30
    return-void
.end method

.method public setSignedInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;)V
    .locals 0
    .param p1, "mSignedInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->mSignedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;

    .line 22
    return-void
.end method
