.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private mCounter:I

.field private mEncryptionAlgo:Ljava/lang/String;

.field private mEncryptionType:I

.field private mSecret:Ljava/lang/String;

.field public mStructuredData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

.field private mTime:I

.field private mTimeDrift:I

.field private mTimeInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mCounter:I

    return v0
.end method

.method public getEncryptionAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mStructuredData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTime:I

    return v0
.end method

.method public getTimeDrift()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeDrift:I

    return v0
.end method

.method public getTimeInterval()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeInterval:I

    return v0
.end method

.method public setCounter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1
    .param p1, "counter"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mCounter:I

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setEncryptionType(I)V
    .locals 0
    .param p1, "encryptionType"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    .line 118
    return-void
.end method

.method public setSecret(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1
    .param p1, "secret"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    .line 45
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionAlgo:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStructuredData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 0
    .param p1, "mStructuredData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mStructuredData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .line 28
    return-void
.end method

.method public setTime(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1
    .param p1, "time"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTime:I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTimeDrift(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1
    .param p1, "timeDrift"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeDrift:I

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTimeInterval(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1
    .param p1, "timeInterval"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeInterval:I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
