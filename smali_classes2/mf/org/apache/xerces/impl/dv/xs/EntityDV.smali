.class public Lmf/org/apache/xerces/impl/dv/xs/EntityDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "EntityDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "UndeclaredEntity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "NCName"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 46
    :cond_0
    return-object p1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x81f

    return v0
.end method
