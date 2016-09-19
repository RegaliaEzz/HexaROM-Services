.class public Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;
.super Ljava/lang/Object;
.source "ListDatatypeValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/DatatypeValidator;


# instance fields
.field final fItemValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V
    .locals 0
    .param p1, "itemDV"    # Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;->fItemValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 44
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v1, "parsedList":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 60
    .local v0, "numberOfTokens":I
    if-nez v0, :cond_1

    .line 61
    new-instance v2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v3, "EmptyList"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 65
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;->fItemValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    return-void
.end method
