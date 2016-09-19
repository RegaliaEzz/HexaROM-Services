.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;
.super Lmf/org/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;
.source "XML11NMTOKENDatatypeValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v1, "NMTOKENInvalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method
