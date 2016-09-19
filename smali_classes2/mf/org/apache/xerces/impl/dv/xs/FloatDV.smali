.class public Lmf/org/apache/xerces/impl/dv/xs/FloatDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "FloatDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .end local p1    # "value1":Ljava/lang/Object;
    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .end local p2    # "value2":Ljava/lang/Object;
    # invokes: Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->access$0(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I

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
    .line 44
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "float"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x9f8

    return v0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v0, p2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .end local p1    # "value1":Ljava/lang/Object;
    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .end local p2    # "value2":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->isIdentical(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    .restart local p1    # "value1":Ljava/lang/Object;
    .restart local p2    # "value2":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
