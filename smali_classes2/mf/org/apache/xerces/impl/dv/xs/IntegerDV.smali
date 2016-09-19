.class public Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.source "IntegerDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    return-void
.end method


# virtual methods
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
    const/4 v5, 0x1

    .line 36
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "integer"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
