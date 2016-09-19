.class Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "PrecisionDecimalDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p1    # "value1":Ljava/lang/Object;
    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p2    # "value2":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v0

    return v0
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "precisionDecimal"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0xff8

    return v0
.end method

.method public getFractionDigits(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p1    # "value":Ljava/lang/Object;
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    return v0
.end method

.method public getTotalDigits(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p1    # "value":Ljava/lang/Object;
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    return v0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 356
    instance-of v0, p2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 358
    .end local p1    # "value1":Ljava/lang/Object;
    .end local p2    # "value2":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "value1":Ljava/lang/Object;
    .restart local p2    # "value2":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p1    # "value1":Ljava/lang/Object;
    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .end local p2    # "value2":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->isIdentical(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)Z

    move-result v0

    goto :goto_0
.end method
