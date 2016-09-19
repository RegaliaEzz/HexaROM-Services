.class public Lmf/org/apache/xerces/impl/dv/xs/QNameDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "QNameDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "colonptr":I
    if-lez v0, :cond_0

    .line 53
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "localpart":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v5, "cvc-datatype-valid.1.2.1"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    const-string v7, "QName"

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 56
    .end local v1    # "localpart":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;->EMPTY_STRING:Ljava/lang/String;

    .line 57
    .restart local v2    # "prefix":Ljava/lang/String;
    move-object v1, p1

    .restart local v1    # "localpart":Ljava/lang/String;
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v5, "cvc-datatype-valid.1.2.1"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    const-string v7, "QName"

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 68
    :cond_2
    invoke-interface {p2, v2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "uri":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-nez v3, :cond_3

    .line 70
    new-instance v4, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v5, "UndeclaredPrefix"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object v2, v6, v8

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 72
    :cond_3
    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6, v3}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x81f

    return v0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;

    .end local p1    # "value":Ljava/lang/Object;
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
